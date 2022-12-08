- dashboard: category_analysis
  title: Category Analysis
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: cloudbihack22orderlin1
  embed_style:
    show_title: false
    show_filters_bar: false
  elements:
  - title: Total Retail Price by Category
    name: Total Retail Price by Category
    model: product_order_inventory
    explore: products
    type: looker_bar
    fields: [products.category, products.total_retail_price, products.department]
    pivots: [products.department]
    sorts: [products.department, products.total_retail_price desc 0]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '12'
    series_types: {}
    series_colors:
      Men - products.total_retail_price: "#E57947"
      Women - products.total_retail_price: "#72D16D"
    x_axis_label_rotation: 270
    defaults_version: 1
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 0
    col: 0
    width: 14
    height: 15
  - title: Top 10 Products by Total Retail Price
    name: Top 10 Products by Total Retail Price
    model: product_order_inventory
    explore: product_sheets
    type: looker_column
    fields: [product_sheets.product_name, products.total_retail_price]
    sorts: [products.total_retail_price desc 0]
    limit: 10
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: da8306b5-3b46-48aa-9ead-a3b32292f35c
      palette_id: 75905e81-dadc-472c-b9a2-a201f788d55d
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: products.total_retail_price,
            id: products.total_retail_price, name: Total Retail Price}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: products.average_retail_price,
            id: products.average_retail_price, name: Average Retail Price}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      products.average_retail_price: line
    series_colors:
      products.average_retail_price: "#4A80BC"
      products.total_retail_price: "#CD9D6B"
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 7
    col: 14
    width: 10
    height: 8
  - title: Inventory by Category
    name: Inventory by Category
    model: product_order_inventory
    explore: inventory_items
    type: looker_area
    fields: [products.category, inventory_items.count]
    sorts: [inventory_items.count desc 0]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: inventory_items.count,
            id: inventory_items.count, name: Inventory Items}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      inventory_items.count: "#74A09F"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    row: 0
    col: 14
    width: 10
    height: 7
