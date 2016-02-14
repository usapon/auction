class ItemsController < ApplicationController
  def show
    # @XXX:インスタンス変数にて、Viewへ受け渡しできるように。
    @item = Item.find(params[:id])
  end
end
