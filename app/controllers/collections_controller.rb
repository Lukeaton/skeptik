class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end

  def show
    # @collection = Collection.find params[:id]
    if @current_user.collections.present?
      @collection = @current_user.collections.first
    else
      @collection = Collection.create title: "My Collection"
      @collection.user_id = @current_user.id
    end
  end

  def edit
    @collection = Collection.find params[:id]
  end

  def new
    @collection = Collection.new
  end

    def create
      collection = Collection.create collection_params
      redirect_to collection
    end

    def update
      collection = Collection.find params[:id]
      collection.update collection_params
      redirect_to collection
    end




    private
    def collection_params
      params.require(:collection).permit(:title)
    end
end
