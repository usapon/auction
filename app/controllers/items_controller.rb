class ItemsController < ApplicationController
  def show
    # @XXX:インスタンス変数にて、Viewへ受け渡しできるように。
    @item = Item.find(params[:id])
  end

  def index
    # 複数格納されるので、複数形に。
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to @item
  end

  def edit
    @item = Item.find(params[:id])
    # DBから抜く。
  end

  def update
    # ItemsController ::update
    # Item::update
    @item = Item.find(params[:id])
    @item.update(item_params)
    # updateは変更した箇所のみ探して送る。
     redirect_to @item
  end

  def destroy
    @item = Item.find(params[:id])
    # まずupdate(削除)した情報を取得する。
    @item.destroy
    redirect_to items_url
  end

  private

  def item_params
    params.require(:item).permit(
      :name, :description, :price,
      :email, :seller_id, :image_url
      )
  end
end
