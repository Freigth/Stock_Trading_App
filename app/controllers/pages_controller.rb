class PagesController < ApplicationController
  before_action :return_if_not_user
  before_action :call_iex
  def home
    if params[:TR_Q].present?
      @pending = Pending.create(user_id: current_user.id, symbol: params[:TR_S], quantity: params[:TR_Q],
                                amount: params[:TR_A])
      @pending.save
      DeleteJob.set(wait: 10.seconds).perform_later(@pending.id)
      respond_to do |format|
        format.html do
          redirect_to root_path, notice: "#{params[:TR_Q]} #{params[:TR_S]}, has been added to pending stage"
        end
      end
    end
    @transactions = current_user.transactions.where('stock_quantity > ?', 0)
    @pending_stocks = current_user.pendings

    @sum = params[:TR_A] if params[:TR_S].present?
  end

  def completed; end

  def pending; end

  def history
    @histories = current_user.user_histories.where.not(symbol: nil).order(created_at: :desc)
  end

  def not_found; end

  def call_iex
    @client = Client.call_iex
  end

  private

  def return_if_not_user
    redirect_to users_admin_path if current_user.admin?
  end
end
