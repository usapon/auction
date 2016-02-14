class ItemsController < ApplicationController
  def show
    # @XXX:インスタンス変数にて、Viewへ受け渡しできるように。
    @item = Item.find(params[:id])
  end

  def index
    # 複数格納されるので、複数形に。
    @items = Item.all
  end

end
