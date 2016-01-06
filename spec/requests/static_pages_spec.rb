require 'rails_helper'

describe "Static pages" do

  describe "Home page" do

    it "содержит контент 'Не дай себя обмануть'" do
      visit '/'
      expect(page).to have_content('Не дай себя обмануть')
    end

    it "содержит title 'Главная'" do
      visit '/'
      expect(page).to have_title('Главная | vk-trust не дай себя обмануть')
    end
  end

  describe "Help page" do

    it "содержит контент 'Помощь'" do
      visit '/static_pages/help'
      expect(page).to have_content('Как пользоваться сервисом')
    end

    it "have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Помощь | vk-trust не дай себя обмануть')
    end
  end

  describe "About page" do

    it "содержит контент 'О проекте'" do
      visit '/static_pages/about'
      expect(page).to have_content('Для кого сделан этот сайт')
    end

    it "содержит title 'О проекте'" do
      visit '/static_pages/about'
      expect(page).to have_title('О проекте | vk-trust не дай себя обмануть')
    end
  end

  describe "Contacts page" do

    it "содержит контент 'Контактная информация'" do
      visit '/static_pages/contacts'
      expect(page).to have_content('Контактная информация')
    end

    it "содержит title 'Контакты'" do
      visit '/static_pages/contacts'
      expect(page).to have_title('Контакты | vk-trust не дай себя обмануть')
    end
  end
end
