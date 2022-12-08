project_name: "product_order_inventory"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
application: product_inventory {
  label: "Inventory Analytics"
  file: "bundle/bundle.js"
  # url: "https://localhost:8080/bundle.js"
  entitlements: {
    local_storage: yes
    navigation: yes
    new_window: yes
    use_form_submit: yes
    use_embeds: yes
    use_iframes: yes
    new_window_external_urls: ["https://hack.looker.com/extensions/product_order_inventory::product_inventory/overview"]
  }
}
