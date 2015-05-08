require('spec_helper.rb')

describe(Clients) do

  describe("#initialize") do
    it("is initialized with a name") do
      clients = Client.new({:name => "Wanda Wonders", :id => nil})
      expect(clients).to(be_an_instance_of(Clients))
    end

    it("can be initialized with its database ID") do
      clients = Clients.new({:name => "Wanda Wanders", :id => 1})
      expect(clients).to(be_an_instance_of(Clients))
    end
  end
end
