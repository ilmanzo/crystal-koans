require "./spec_helper"

# Sometimes you want to limit options not just to symbols but to a smaller set of possibilities. It
# can be handy to group variables with a discrete number of values, like the colors of a traffic light
# or the compass directions, into a specific type. Crystal supports Enums to group related values,
# specifically when the number of distinct values isn’t too big.

enum Direction
    North       # value 0
    East        # value 1
    South       # value 2
    West        # value 3
end


# Enums are stored internally as integers, but showing their names in the code makes them more
# readable to humans. In the grand scheme of Crystal things, all enums inherit from the base
# class Enum , and you can even define methods for them.


enum TrafficLightColor
    Red
    Yellow
    Green
end



# if you annotate an Enum with @[Flags] attribute, the values are power of two.
# Implicit constants, None and All, are automatically added to these enums, 
# where None has the value 0 and All has the "or"ed value of all constants.
@[Flags]
enum FileMode
    Read    # value 1
    Write   # value 2
    Append  # value 4
end


# Enums are a type-safe alternative to Symbol, saving you from typo at compile time.
# The recommended thing to do is to use enums whenever possible, 
# only use symbols for the internal implementation of an API,
# and avoid symbols for public APIs. But you are free to do what you want.


describe Student do

    it "knows Enums are types" do
        d=Direction::North
        d.class.to_s.should eq FILL_IN_THIS
    end

    it "knows Enums" do
        a = [] of TrafficLightColor
        a << TrafficLightColor::Green << TrafficLightColor::Yellow << TrafficLightColor::Red
        a[1].should eq FILL_IN_THIS
    end

    it "knows Enums defines question methods" do
        direction = Direction::North
        direction.north?.should eq FILL_IN_THIS
        direction.east?.should eq FILL_IN_THIS
    end


    it "knows Enums can be flag-annotated" do
        FileMode::Append.value.should eq FILL_IN_THIS
        FileMode::None.value.should eq FILL_IN_THIS
        FileMode::All.value.should eq FILL_IN_THIS
    end



end