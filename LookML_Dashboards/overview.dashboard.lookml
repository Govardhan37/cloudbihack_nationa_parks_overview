- dashboard: overview
  title: Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: cloudbihack22overview1
  enable_viz_full_screen: false
  embed_style:
    show_title: false
    show_filters_bar: false
  elements:
  - title: Category Count
    name: Category Count
    model: product_order_inventory
    explore: order_items
    type: single_value
    fields: [products.category_count]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Brand: products.brand
      Department: products.department
      Category: products.category
    row: 0
    col: 0
    width: 4
    height: 2
  - title: brand count
    name: brand count
    model: product_order_inventory
    explore: order_items
    type: single_value
    fields: [products.brand_count]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Brand: products.brand
      Department: products.department
      Category: products.category
    row: 0
    col: 4
    width: 4
    height: 2
  - title: product count
    name: product count
    model: product_order_inventory
    explore: order_items
    type: single_value
    fields: [products.Product_count]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Brand: products.brand
      Department: products.department
      Category: products.category
    row: 0
    col: 12
    width: 4
    height: 2
  - title: SKU count
    name: SKU count
    model: product_order_inventory
    explore: order_items
    type: single_value
    fields: [products.sku_count]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Brand: products.brand
      Department: products.department
      Category: products.category
    row: 0
    col: 8
    width: 4
    height: 2
  - title: total retail price
    name: total retail price
    model: product_order_inventory
    explore: order_items
    type: single_value
    fields: [products.total_retail_price_value]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Brand: products.brand
      Department: products.department
      Category: products.category
    row: 0
    col: 16
    width: 4
    height: 2
  - title: average retail price
    name: average retail price
    model: product_order_inventory
    explore: order_items
    type: single_value
    fields: [products.average_retail_price_value]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Brand: products.brand
      Department: products.department
      Category: products.category
    row: 0
    col: 20
    width: 4
    height: 2
  - title: Average Retail Price Vs Total Retail Price (Forecasted for future 5 months)
    name: Average Retail Price Vs Total Retail Price (Forecasted for future 5 months)
    model: product_order_inventory
    explore: order_items
    type: looker_line
    fields: [order_items.average_sale_price, order_items.total_sale_price, orders.created_month]
    fill_fields: [orders.created_month]
    filters:
      orders.created_date: after 2016/01/01
    sorts: [orders.created_month desc]
    limit: 500
    analysis_config:
      forecasting:
      - confidence_interval: 0.99
        field_name: order_items.average_sale_price
        forecast_n: 5
        forecast_interval: month
      - confidence_interval: 0.99
        field_name: order_items.total_sale_price
        forecast_n: 5
        forecast_interval: month
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.average_sale_price,
            id: order_items.average_sale_price, name: Average Sale Price}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: order_items.total_sale_price,
            id: order_items.total_sale_price, name: Total Sale Price}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Order Month
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      order_items.average_sale_price: "#E57947"
      order_items.total_sale_price: "#9174F0"
    x_axis_label_rotation: 310
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Brand: products.brand
      Department: products.department
      Category: products.category
    row: 2
    col: 7
    width: 17
    height: 6
  - title: Average Retail Price by Department
    name: Average Retail Price by Department
    model: product_order_inventory
    explore: order_items
    type: looker_pie
    fields: [products.department, order_items.average_sale_price]
    sorts: [products.department]
    limit: 500
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_colors:
      Men - order_items.average_sale_price: "#E8710A"
      Women - order_items.average_sale_price: "#7CB342"
      Men: "#80868B"
      Women: "#FF8168"
    show_value_labels: true
    font_size: 12
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Brand: products.brand
      Department: products.department
      Category: products.category
    row: 4
    col: 0
    width: 7
    height: 4
  - title: User Count
    name: User Count
    model: product_order_inventory
    explore: order_items
    type: single_value
    fields: [users.user_count]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Brand: products.brand
      Department: products.department
      Category: products.category
    row: 2
    col: 0
    width: 7
    height: 2
  - title: Order Details Table
    name: Order Details Table
    model: product_order_inventory
    explore: order_items
    type: looker_grid
    fields: [order_items.order_id, order_items.inventory_item_id, order_items.returned_at,
      users.id, users.first_name, users.city, order_items.sale_price]
    sorts: [order_items.sale_price desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_text_format:
      order_items.order_id:
        fg_color: "#fff"
      order_items.inventory_item_id:
        fg_color: "#fff"
      order_items.returned_at:
        fg_color: "#fff"
      users.id:
        fg_color: "#fff"
      users.first_name:
        fg_color: "#fff"
      users.city:
        fg_color: "#fff"
      order_items.sale_price:
        fg_color: "#fff"
    header_font_color: "#000"
    header_background_color: "#FFD95F"
    defaults_version: 1
    listen: {}
    row: 8
    col: 0
    width: 24
    height: 6
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
