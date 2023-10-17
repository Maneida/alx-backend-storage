#!/usr/bin/env python3
"""
A module that updates a collection in a MongoDB database
"""


def update_topics(mongo_collection, name, topics):
    """ A function that updates a collection in a MongoDB database """
    mongo_collection.update_many({"name": name}, {"$set": {"topics": topics}})
