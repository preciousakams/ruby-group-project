require_relative '../classes/label'
describe Label do
  before do
    @label = Label.new('penguin', 'red')
    @item = Item.new(2010)
  end
  describe 'create a new label' do
    it 'should create a new instance of Label' do
      expect(@label).to be_an_instance_of Label
    end
    it 'should have a title' do
      expect(@label.title).to eq 'penguin'
    end
    it 'should have a color' do
      expect(@label.color).to eq 'red'
    end
    it 'should have an id' do
      expect(@label.id).to be_a Integer
    end
    it 'should have an items array' do
      expect(@label.items).to be_an_instance_of Array
    end
    it 'should be able to add an item to the items array' do
      @label.add_item(@item)
      expect(@label.items).to include(@item)
    end
  end
end
