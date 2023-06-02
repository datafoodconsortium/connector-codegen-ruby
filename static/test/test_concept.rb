require 'connector'
require "minitest/autorun"

class ConceptTest < Minitest::Test
  def test_concept
    expected = connector.PRODUCT_TYPES.VEGETABLE.ARTICHOKE
    actual = connector.concept(
      "http://static.datafoodconsortium.org/data/productTypes.rdf#artichoke"
    )
    assert_equal expected, actual
  end
end
