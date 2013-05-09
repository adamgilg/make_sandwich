require "spec_helper"

describe SandwichMailer do
  describe 'send_order' do
    let(:user) { mock_model(User, email: 'adam@example.com') }
    let(:sandwich) { mock_model(Sandwich, name: "Vegan", description: "A serious lack of meat") }
    let(:mail) { SandwichMailer.send_order(user, sandwich) }

    it 'has the correct subject' do
      mail.subject.should == 'Sandwich!'
    end

    it 'has the correct from address' do
      mail.from.should == ['make@sandwich.com']
    end

    it 'has the correct to address' do
      mail.to.should == [user.email]
    end

    it "sends the email" do
      mail.deliver!
      ActionMailer::Base.deliveries.size.should == 1
    end


    # it 'knows about the correct sandwich' do
    # #   last_delivery = ActionMailer::Base.deliveries.last
    # #   last_delivery.body.raw_source.should include "Vegan"
    #   mail.body.encoded.should include(sandwich.name)
    # end
  end
end
