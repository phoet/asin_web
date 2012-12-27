class NodeExample
  def initialize
    @client = ASIN::Client.instance
  end

  def node_name
    node_id = '599826'
    @client.browse_node(node_id, :ResponseGroup => :TopSellers).first.name
  end
end
