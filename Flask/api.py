## Working With API JSON
from flask import Flask,jsonify,request

app = Flask(__name__)


# In-memory data (acts like a database)
items = [
    {"id": 1, "name": "Item 1", "description": "This is item 1"},
    {"id": 2, "name": "Item 2", "description": "This is item 2"}
]

## Home
@app.route("/")
def home():
     return jsonify({"message": "Welcome to the Sample To-Do List API"})

## Get all Items
@app.route("/items",methods=["GET"])
def get_items():
     return jsonify(items),200

## Get Item by id
@app.route("/items/<int:item_id>",methods=["GET"])
def get_item(item_id):
     item = next((i for i in items if i["id"] == item_id), None)

     if not item:
          return jsonify({"error": "Item not found"}), 404
     
     return jsonify(item),200

## create item
@app.route("/items",methods=["POST"])
def create_item():
    if not request.is_json:
        return jsonify({"error": "Request must be JSON"}), 400

    data = request.get_json()

    if "name" not in data or "description" not in data:
        return jsonify({"error": "Name and description are required"}), 400

    new_id = max(item["id"] for item in items) + 1 if items else 1

    new_item = {
        "id": new_id,
        "name": data["name"],
        "description": data["description"]
    }

    items.append(new_item)
    return jsonify(new_item), 201

## Update item
@app.route("/items/<int:item_id>", methods=["PUT"])
def update_item(item_id):
    item = next((i for i in items if i["id"] == item_id), None)

    if not item:
        return jsonify({"error": "Item not found"}), 404

    data = request.get_json()

    item["name"] = data.get("name", item["name"])
    item["description"] = data.get("description", item["description"])

    return jsonify(item), 200

## Delete Item
@app.route("/items/<int:item_id>", methods=["DELETE"])
def delete_item(item_id):
    global items
    item = next((i for i in items if i["id"] == item_id), None)

    if not item:
        return jsonify({"error": "Item not found"}), 404

    items = [i for i in items if i["id"] != item_id]
    return jsonify({"message": "Item deleted successfully"}), 200

 ## run server
if __name__ == "__main__":
    app.run(debug=True)