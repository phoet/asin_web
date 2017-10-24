class NodeExample
  def initialize
    @client = ASIN::Client.instance
  end

  def node_name
    node_id = '284266' # DVD & Blu-ray, https://www.amazon.de/dvd-blu-ray-filme-3D-vhs-video/b/ref=sd_allcat_dvd_blu?ie=UTF8&node=284266
    @client.browse_node(node_id, ResponseGroup: :TopSellers).first.name
  end
end
