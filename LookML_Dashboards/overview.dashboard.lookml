- dashboard: overview
  title: Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 31tUVVhrkdxQ6I1y2OXOeJ
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
    listen: {}
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
    listen: {}
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
    listen: {}
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
    listen: {}
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
    listen: {}
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
    listen: {}
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
    listen: {}
    row: 2
    col: 0
    width: 24
    height: 7
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
