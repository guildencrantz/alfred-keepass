# encoding: utf-8

require "json"

class AlfredItem
	attr_accessor :title, :subtitle, :arg

	def initialize(title, subtitle, arg)
		@title = title
		@subtitle = subtitle
		@arg = arg
	end

	def as_json(*options)
		{
			title: @title,
			subtitle: @subtitle,
			arg: @arg,
			mods: {
				alt: {
					valid: true,
					arg: @subtitle,
					subtitle: 'Type: ' + @subtitle,
				},
			},
		}
	end

	def to_json(*options)
		as_json(*options).to_json(*options)
	end
end
