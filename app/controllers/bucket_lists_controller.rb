class BucketListsController < ApplicationController

  def index
    # @bucket_list = BucketList.new
    # @bucket_list.title ="Do or do not"
    # @bucket_list.subtitle ="There is no try"
    #
    # @done_list = BucketList.new
    # @done_list.title ="Done"
    # @done_list.subtitle ="Well done"
    #
    # @trash_list = BucketList.new
    # @trash_list.title ="Oh no!"
    #
    # @bucket_lists = [@bucket_list, @done_list, @trash_list]
    @bucket_lists = BucketList.all
  end

  def show
    @bucket_list = BucketList.find params[:id]
  end

  def new
    @bucket_list = BucketList.new
  end

  def create
    # puts "lol"
    # puts params
    @bucket_list = BucketList.new bucket_list_params
    @bucket_list.save
    redirect_to bucket_lists_path
  end

  def edit
    @bucket_list = BucketList.find params[:id]
  end

  def update
    @bucket_list = BucketList.find params[:id]
    @bucket_list.update bucket_list_params
    redirect_to bucket_list_path(@bucket_list.id)
  end

  private
    def bucket_list_params
      params.require(:bucket_list).permit(:title, :subtitle)
    end



end
