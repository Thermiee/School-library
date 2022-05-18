require './person'

describe Person do
  let(:person_one) { Person.new(27, 'Isma') }
  let(:person_two) { Person.new(4, 'Manel', parent_permission: false) }
  let(:person_three) { Person.new(20, 'Sarah') }
  let(:person_four) { Person.new(15, 'Sissa', parent_permission: false) }

  describe '#can_use_services?' do
    it 'returns true if the person is of age or has parent permission' do
      expect(person_one.can_use_services?).to eq(true)
      expect(person_two.can_use_services?).to eq(false)
      expect(person_three.can_use_services?).to eq(true)
      expect(person_four.can_use_services?).to eq(false)
    end
  end
end
