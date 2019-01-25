# frozen_string_literal: true

require 'rails_helper'

describe StoreMailer, type: :mailer do
  describe '.new_product_alert' do
    let(:user) { User.new(email: 'john@doe.com') }
    let(:product) {Product.new(name: 'Grill', description: 'Oven grill', release_date: '12/02/2019')}
    let(:mail_subject) do
        'New product created'
    end
    let(:mail) { described_class.new_product_alert(user, mail_subject, product) }

    let(:mail_content) do
      "A new product has been created in your store."
    end

    it 'renders the headers' do
      expect(mail.subject).to eq(mail_subject)
      expect(mail.to).to eq(['john@doe.com'])
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match(mail_content)
    end
  end
end
