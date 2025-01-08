class ItemsController < ApplicationController
  before_action :set_list
  before_action :set_item, only: [:update, :destroy]

  def create
    @item = @list.items.new(item_params)
    if @item.save
      redirect_to @list, notice: 'Item adicionado com sucesso.'
    else
      redirect_to @list, alert: 'Erro ao adicionar o item.'
    end
  end

  def update
    if @item.update(item_params)
      redirect_to @list, notice: 'Item atualizado com sucesso.'
    else
      redirect_to @list, alert: 'Erro ao atualizar o item.'
    end
  end

  def destroy
    @item.destroy
    redirect_to @list, notice: 'Item excluído com sucesso.'
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_item
    @item = @list.items.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:description, :done)
  end
end
