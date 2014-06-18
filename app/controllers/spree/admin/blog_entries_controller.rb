class Spree::Admin::BlogEntriesController < Spree::Admin::ResourceController
  helper 'spree/blog_entries'

  def set_blog_to_add_images_to
    session[:blog_entry_id] = if Spree::BlogEntry.where(id: params[:blog_entry_id]).present?
      params[:blog_entry_id]
    else
      nil
    end
    redirect_to :back
  end

  def add_pinterest_image
    @blog_entry.pinterest_images << PinterestImage.find(params[:pinterest_image_id])
    redirect_to :back
  end

  private

    def location_after_save
      edit_admin_blog_entry_url(@blog_entry)
    end

    def collection
      page = params[:page].to_i > 0 ? params[:page].to_i : 1
      per_page = params[:per_page].to_i > 0 ? params[:per_page].to_i : 20
      model_class.page(page).per(per_page)
    end

end
