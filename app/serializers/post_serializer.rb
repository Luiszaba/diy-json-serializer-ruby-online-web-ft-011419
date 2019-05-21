class PostSerializer

    def self.serialize(post)

        # start with an open brace to create a valid JSON object
        serialize_post = '{'
        
        serialize_post += '"id": ' + post.id.to_s + ', '
        serialize_post += '"title": "' + post.title + '", '
        serialize_post += '"description": "' + post.description + '", '

        # author can also be represented as a JSON object
        serialize_post += '"author": {'
        serialize_post += '"name": "' + post.author.name + '"}'

        # monitor single and double qoutation marks. Take care with your quotations. We need to single-quote our strings because JSON requires double-quoted keys and string values. 
        # end with close curly brace
        serialize_post += '}'
    end
end
