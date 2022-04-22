require "spec_helper"

# The XML module allows parsing and generating XML documents.
# examples are from https://www.w3schools.com/xml/xml_examples.asp

require "xml"

describe Student do
  it "knows how to parse simple xml files" do
    notefile = File.new("assets/xml/note.xml")
    document = XML.parse(notefile) # XML::Node
    notefile.close
    node = document.first_element_child # : XML::Node?
    node.name.should eq FILL_IN_THIS if node
  end

  it "knows how to parse xml files with multiple elements" do
    document = File.open("assets/xml/breakfast_menu.xml") do |file|
      XML.parse(file)
    end
    i_will_have = "a Toast"
    node = document.first_element_child
    next unless node                                   # can be Nil
    node.children.select(&.element?).each do |food|    # iterate only on elements
      food.children.select(&.element?).each do |child| # all childrens of 'food' element
        if child.content.includes? "waffles"
          i_will_have = "WAFFLES!"
          break
        end
      end
    end
    i_will_have.should eq FILL_IN_THIS
  end

  it "knows how to generate XML" do
    string = XML.build(indent: " ") do |xml|
      xml.element("note", id: 1) do
        xml.element("to") { xml.text "Jane" }
        xml.element("from") { xml.text "John" }
        xml.element("body") { xml.text "buy milk please" }
      end
    end
    xml_header = "FILL_IN_THIS"
    string.should contain xml_header
  end

  # TODO add more tests
end
