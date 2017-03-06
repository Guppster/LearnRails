class Micropost < CouchRest::Model::Base
    use_database 'microposts'
    property :content, String
    property :user_id, Integer
    timestamps!
end
