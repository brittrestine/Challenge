require File.expand_path '../../spec_helper.rb', __FILE__

  describe Contact do

    describe "formating birthday for contacts" do
      let(:contact_birthday) { Contact.create!(birthdate: "1974-05-20") }

      it 'formats contact birthday' do
        expect(contact_birthday.birthday_format).to eq("May 20, 1974")
      end
    end

    describe "formating phone number for contacts" do
      let(:contact_work_phone) { Contact.create!(work_phone: "805-888-8989") }
      let(:contact_mobile_phone) { Contact.create!(mobile_phone: "777-888-8989") }
      let(:contact_home_phone) { Contact.create!(home_phone: "999-888-8989") }

      it 'formats work_phone' do
        expect(contact_work_phone.phone_format(contact_work_phone.work_phone)).to eq("(805)888-8989")
      end

      it 'formats mobile_phone' do
        expect(contact_mobile_phone.phone_format(contact_mobile_phone.mobile_phone)).to eq("(777)888-8989")
      end

      it 'formats work_phone' do
        expect(contact_home_phone.phone_format(contact_home_phone.home_phone)).to eq("(999)888-8989")
      end
    end


  end
