def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  # takes in string and Array
  #outputs: nil if no match found /  matching hash
  # Consult README for inputs and outputs
counter = 0
while counter < collection.length
if collection[counter][:item] == name
  return collection[counter]
end
counter += 1
end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #takes in: array (of hashes)
  # outputs: new array
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
counter = 0
while counter < cart.length
new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
if new_cart_item #!= nil
  new_cart_item[:count] += 1
else
  new_cart_item = {
    :item => cart[counter][:item],
    :price => cart[counter][:price],
    :clearance => cart[counter][:clearance],
    :count => 1
  }
  new_cart << new_cart_item
end
counter += 1
end
new_cart
end
