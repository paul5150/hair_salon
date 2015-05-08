require('spec_helper.rb')

describe(Stylists) do

  describe("#initialize") do
    it("is initialized with a name") do
      clients = Stylists.new({:name => "Robert Heinlein", :id => nil})
      expect(stylists).to(be_an_instance_of(Stylists))
    end

    it("can be initialized with its database ID") do
      clients = Stylists.new({:name => "Robert Heinlein", :id => 1})
      expect(stylists).to(be_an_instance_of(Stylists))
    end
  end
end
