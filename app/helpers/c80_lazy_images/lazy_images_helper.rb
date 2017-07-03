module C80LazyImages

  module LazyImagesHelper

    # отрисовать кликабельную картинку
    # с использованием плюшки lazy_load
    def render_image_link_lazy(options = {})
      # options = {
      #     :alt_image,
      #     :image,
      #     :a_href,
      #     :aid,
      #     :a_class,
      #     :target,
      #     :style
      # }

      alt_image = options.fetch(:alt_image, '')
      image = options.fetch(:image, '1px_invisible.gif')
      a_href = options.fetch(:a_href, '/')
      aid = options.fetch(:aid, '')
      a_class = options.fetch(:a_class, '')
      target = options.fetch(:target, '_self')
      a_css_style = options.fetch(:a_css_style, '')
      a_rel = options.fetch(:a_rel, 'follow')

      render :partial => 'c80_lazy_images/image_link_lazy',
             :locals => {
                 :alt_image => alt_image,
                 :image => image,
                 :a_href => a_href,
                 :aid => aid,
                 :a_class => a_class,
                 :target => target,
                 :a_css_style => a_css_style,
                 :a_rel => a_rel
             }
    end

  end

end