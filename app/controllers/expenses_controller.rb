class ExpensesController < ApplicationController
  def index
    @current_user = current_user
    @group = Group.find(params[:group_id])
    @expenses = @group.show_expenses
    @total_expenses = @group.expenses_total
  end

  def new
    @current_user = current_user
    @groups = @current_user.group.all
  end

  def create
    rel_params = params[:expense]
    relations = rel_params[:relations]
    @current_user = current_user

    if relations.length <= 1
      flash[:notice] = 'Something went wrong try again'
      redirect_to new_user_group_expense_path
    else
      begin
        @new_expense = Expense.create!(expense_params)
        relations.each do |g|
          Relation.create!(group_id: g, expense_id: @new_expense.id) if g != ''
        end
      rescue StandardError
        # mssg
        redirect_to new_user_group_expense_path
      else
        redirect_to user_group_expenses_path
      end
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:author_id, :name, :amount, :user_id)
    # hash.merge(relations:params[:relations])
    # hash
  end
end
