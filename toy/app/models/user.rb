class User < CouchRest::Model::Base
    use_database 'users'
    property :name, type: String
    property :email, type: String
    timestamps!
end
