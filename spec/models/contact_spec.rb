require File.expand_path '../../spec_helper.rb', __FILE__

  describe Contact do

    describe "formating birthday for contacts" do
      let(:contact_birthday) { Contact.create!(birthdate: "1974-05-20") }

      it 'formats contact birthday' do
        expect(contact_birthday.birthday_format).to eq("May 20, 1974")
      end

    end


  end
