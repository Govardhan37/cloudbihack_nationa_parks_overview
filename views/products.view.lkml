# The name of this view in Looker is "Products"
view: products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `demo.products`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Brand" in Explore.

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: category_drill {
    type: string
    sql: ${TABLE}.category ;;
    link: {
      label: "To Order Line Item Data"
      url: "https://hack.looker.com/dashboards/34?Brand={{_filters['products.brand'] | url_encode}}&Category={{value | url_encode}}&Department={{_filters['products.department'] | url_encode}}"
    }
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_retail_price {
    type: sum
    sql: ${retail_price} ;;
    value_format: "$ 0.00"
  }

  measure: average_retail_price {
    type: average
    sql: ${retail_price} ;;
    value_format: "$ 0.00"
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count, product_sheets.count]
  }

  #-------- Miscellaneos ---------#

  measure: category_count {
    type: count_distinct
    group_label: "Miscellaneous"
    group_item_label: "Category count"
    sql: ${category} ;;
    html:
    <div style="border:1px solid;border-color:#EEEEEE;background-color:#FAEACB;border-radius:6px;height:100%;">
      <p style="font-size:45%;line-height:1rem;padding-top:10px">
        Category Count
      </p>
      <p style="font-size:60%;line-height:1rem;padding:5px 0px">
        {{rendered_value}}
      </p>
    ;;
  }

  measure: brand_count {
    type: count_distinct
    group_label: "Miscellaneous"
    group_item_label: "Brand count"
    sql: ${brand} ;;
    html:
   <div style="border:1px solid;border-color:#EEEEEE;background-color:#FCFCFC;border-radius:6px;height:100%;">
      <p style="font-size:45%;line-height:1rem;padding-top:10px">
        Brand Count
      </p>
      <p style="font-size:60%;line-height:1rem;padding:5px 0px">
        {{rendered_value}}
      </p>
    ;;
  }

  measure: Product_count {
    type: count_distinct
    group_label: "Miscellaneous"
    group_item_label: "Product count"
    sql: ${id} ;;
    html:
       <div style="border:1px solid;border-color:#EEEEEE;background-color:#F7DBD7;border-radius:6px;height:100%;">
          <p style="font-size:45%;line-height:1rem;padding-top:10px">
            Product Count
          </p>
          <p style="font-size:60%;line-height:1rem;padding:5px 0px">
            {{rendered_value}}
          </p>
        ;;
  }

  measure: sku_count {
    type: count_distinct
    group_label: "Miscellaneous"
    group_item_label: "SKU count"
    sql: ${sku} ;;
    html:
       <div style="border:1px solid;border-color:#EEEEEE;background-color:#9CC0E7;border-radius:6px;height:100%;">
          <p style="font-size:45%;line-height:1rem;padding-top:10px">
            SKU Count
          </p>
          <p style="font-size:60%;line-height:1rem;padding:5px 0px">
            {{rendered_value}}
          </p>
        ;;
  }

  measure: total_retail_price_value {
    type: number
    group_label: "Miscellaneous"
    group_item_label: "Total Retail Price"
    sql: ${total_retail_price} ;;
    value_format: "$ 0.000,,\" M\""
    html:
       <div style="border:1px solid;border-color:#EEEEEE;background-color:#E3D5A8;border-radius:6px;height:100%;">
          <p style="font-size:45%;line-height:1rem;padding-top:10px">
            Total Retail Price
          </p>
          <p style="font-size:60%;line-height:1rem;padding:5px 0px">
            {{rendered_value}}
          </p>
        ;;
  }

  measure: average_retail_price_value {
    type: number
    group_label: "Miscellaneous"
    group_item_label: "Average Retail Price"
    sql: ${average_retail_price} ;;
    value_format: "$ 0.00"
    html:
       <div style="border:1px solid;border-color:#EEEEEE;background-color:#A0C3A9;border-radius:6px;height:100%;">
          <p style="font-size:45%;line-height:1rem;padding-top:10px">
            Average Retail Price
          </p>
          <p style="font-size:60%;line-height:1rem;padding:5px 0px">
            {{rendered_value}}
          </p>
        ;;
  }

}
