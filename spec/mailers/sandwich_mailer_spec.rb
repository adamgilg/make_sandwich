require "spec_helper"

describe SandwichMailer do
  describe 'send_order' do
    let(:user) { mock_model(User, email: 'adam@example.com') }
    let(:sandwich) { mock_model(Sandwich, name: "Vegan", description: "A serious lack of meat") }
    let(:quote) { mock_model(Quote, author: "me", body: "so many words!") }
    let(:mail) { SandwichMailer.send_order(user, sandwich, quote) }

    it 'has the correct subject' do
      mail.subject.should == 'Sandwich for adam@example.com!'
    end

    it 'has the correct from address' do
      mail.from.should == ['make@sandwich.com']
    end

    it 'has the correct to address' do
      mail.to.should == ["make_sandwich@generalthings.com"]
    end

    it "sends the email" do
      mail.deliver!
      ActionMailer::Base.deliveries.size.should == 1
    end

    describe 'email body' do
      it 'knows about the correct sandwich' do
        mail.body.encoded.should include(sandwich.name)
      end

      it 'contains the correct quote' do
        mail.body.encoded.should include(quote.body)
      end
    end
  end
end
