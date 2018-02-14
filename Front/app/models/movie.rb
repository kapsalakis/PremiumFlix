# class Movie
#     include HTTParty
#
#     base_uri "movies:2515/movies"
#
#     attr_accessor :id, :title, :description
#
#     def initialize(id, title, description)
#
#         self.id = id
#
#         self.title = title
#
#         self.description = description
#
#     end
#
#     # Find a particular movie, based on its id
#
#     def self.find(id)
#
#       begin
#
#         response = get("/#{id}.json")
#
#         if response.success?
#
#             self.new(response["id"], response["title"],
#             response["description"])
#
#         else
#
#         # this just raises the net/http response that was raised
#
#             raise response.response
#
#         end
#
#       rescue HTTParty::Error
#       rescue StandardError
#
#       end
#
#     end
#
#     # Return all movies
#
#     def self.all
#
#         begin
#
#         response = get(".json")
#
#         if response.success?
#
#             response
#
#         else
#
#             # this just raises the net/http response that was raised
#             raise response.response
#
#         end
#
#         rescue HTTParty::Error
#         rescue StandardError
#
#         end
#
#     end
#
# end
class Movie < ActiveResource::Base
  self.site = "http://movies:2515"
end
