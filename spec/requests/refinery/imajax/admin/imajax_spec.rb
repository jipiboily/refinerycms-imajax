# encoding: utf-8
require "spec_helper"

module Refinery
  describe "AdminImages" do
    login_refinery_user

    context "new/create" do
      it "uploads image", :js => true do
        visit refinery.admin_images_path

        click_link ::I18n.t('create_new_image', :scope => 'refinery.admin.images.actions')

        page.should have_selector 'iframe#dialog_iframe'

        page.within_frame('dialog_iframe') do
          attach_file "image_image", Refinery.roots(:'refinery/images').join("spec/fixtures/image-with-dashes.jpg")
          click_button ::I18n.t('save', :scope => 'refinery.admin.form_actions')
        end

        page.should have_content(::I18n.t('created', :scope => 'refinery.crudify', :what => "'Image With Dashes'"))
        Refinery::Image.count.should == 1
      end
    end
  end
end