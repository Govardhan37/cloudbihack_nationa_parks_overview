- dashboard: order_line_item__summary
  title: Order Line Item - Summary
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: LxtCNFfc9cxufhY5qHDNhq
  elements:
  - title: Line Order Item - Data
    name: Line Order Item - Data
    model: product_order_inventory
    explore: order_items
    type: looker_grid
    fields: [products.category, products.brand, products.item_name, products.sku,
      orders.status, order_items.inventory_item_id, order_items.total_sale_price,
      order_items.average_sale_price]
    sorts: [products.category desc, products.brand]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
      products.category: left
      products.brand: left
      products.item_name: left
    column_order: ["$$$_row_numbers_$$$", products.category, products.brand, products.item_name,
      products.sku, orders.status, order_items.inventory_item_id, order_items.total_sale_price,
      order_items.average_sale_price]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      order_items.total_sale_price:
        is_active: true
      order_items.average_sale_price:
        is_active: true
    header_font_color: "#fff"
    header_background_color: "#4276BE"
    truncate_column_names: false
    defaults_version: 1
    series_types: {}
    listen:
      Department: products.department
      Brand: products.brand
      Category: products.category
    row: 2
    col: 0
    width: 24
    height: 9
  - title: data max(date)
    name: data max(date)
    model: product_order_inventory
    explore: order_items
    type: single_value
    fields: [orders.created_date]
    fill_fields: [orders.created_date]
    sorts: [orders.created_date desc]
    limit: 1
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Data Available till
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 4
    height: 2
  filters:
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: product_order_inventory
    explore: order_items
    listens_to_filters: [Department, Category]
    field: products.brand
  - name: Department
    title: Department
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: product_order_inventory
    explore: order_items
    listens_to_filters: [Brand, Category]
    field: products.department
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: product_order_inventory
    explore: order_items
    listens_to_filters: [Brand, Department]
    field: products.category
