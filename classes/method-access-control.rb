# Method Access Control

# methods are primary interfaces to a class
# only expose interfaces when necessary
# access control limits access

# public = anyone can access
# protected = can only called by instances of the class and its subclasses
# private = can only be called by instance of a class

class Blog
  def add_subscriber
    subscribe_to_updates
    subscribe_to_sales
  end

  private

    def subscribe_to_updates
    end

    def subscribe_to_sales
    end
end

blog = Blog.new

# blog.subscribe_to_sales # will cause an error
blog.add_subscriber # no error