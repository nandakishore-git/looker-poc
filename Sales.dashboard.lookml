- dashboard: sales_dashboard
  title: Sales Dashboard
  layout: newspaper
  elements:
  - title: Sales by Zone
    name: Sales by Zone
    model: poc
    explore: agg_store_actual_monthly
    type: table
    fields: [dim_store.zone, agg_store_actual_monthly.actual_sales_cp, agg_store_actual_monthly.actual_sales_lp,
      agg_store_actual_monthly.actual_sales_var, agg_store_actual_monthly.budget_sales_cp]
    sorts: [agg_store_actual_monthly.actual_sales_cp desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      agg_store_actual_monthly.actual_sales_cp: CY
      agg_store_actual_monthly.actual_sales_lp: LY
      agg_store_actual_monthly.actual_sales_var: Variance
      agg_store_actual_monthly.budget_sales_cp: Bud
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {steps: 5, reverse: false}},
        bold: false, italic: false, strikethrough: false, fields: [agg_store_actual_monthly.actual_sales_var]}]
    conditional_formatting_include_totals: true
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: agg_store_actual_monthly.actual_sales_cp,
            id: agg_store_actual_monthly.actual_sales_cp, name: Actual Sales Cp}],
        showLabels: true, showValues: true, valueFormat: '0.0,," M"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    legend_position: center
    label_value_format: 0.0,," M"
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    x_axis_label_rotation: 0
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 3
    col: 0
    width: 8
    height: 6
  - title: Sales by Levels
    name: Sales by Levels
    model: poc
    explore: agg_store_actual_monthly
    type: table
    fields: [dim_store.location, agg_store_actual_monthly.actual_sales_cp, agg_store_actual_monthly.actual_sales_lp,
      agg_store_actual_monthly.actual_sales_var, agg_store_actual_monthly.budget_sales_cp]
    sorts: [dim_store.location]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      agg_store_actual_monthly.actual_sales_var: Variance
      agg_store_actual_monthly.actual_sales_cp: CP
      agg_store_actual_monthly.actual_sales_lp: LP
      agg_store_actual_monthly.budget_sales_cp: Budget
      dim_store.location: Level
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1ebd8493-ebcc-4e57-a4ff-ab3e6111da24, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: [agg_store_actual_monthly.actual_sales_var]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen: {}
    row: 3
    col: 8
    width: 9
    height: 6
  - title: Sales by Category
    name: Sales by Category
    model: poc
    explore: agg_store_actual_monthly
    type: table
    fields: [agg_store_actual_monthly.actual_sales_cp, agg_store_actual_monthly.actual_sales_lp,
      agg_store_actual_monthly.actual_sales_var, agg_store_actual_monthly.budget_sales_cp,
      dim_store.store_category]
    sorts: [agg_store_actual_monthly.actual_sales_cp desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      agg_store_actual_monthly.actual_sales_var: Variance
      agg_store_actual_monthly.actual_sales_cp: CP
      agg_store_actual_monthly.actual_sales_lp: LP
      agg_store_actual_monthly.budget_sales_cp: Budget
      dim_store.location: Level
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: [agg_store_actual_monthly.actual_sales_var]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen: {}
    row: 3
    col: 17
    width: 7
    height: 12
  - title: Zone wise sales - CP
    name: Zone wise sales - CP
    model: poc
    explore: agg_store_actual_monthly
    type: looker_pie
    fields: [dim_store.zone, agg_store_actual_monthly.actual_sales_cp]
    sorts: [dim_store.zone desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: agg_store_actual_monthly.actual_sales_cp,
            id: agg_store_actual_monthly.actual_sales_cp, name: Actual Sales Cp}],
        showLabels: true, showValues: true, valueFormat: '0.0,," M"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    label_value_format: 0.0,," M"
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    x_axis_label_rotation: 0
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: true
    conditional_formatting: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 9
    col: 0
    width: 8
    height: 6
  - title: Sales by Levels
    name: Sales by Levels
    model: poc
    explore: agg_store_actual_monthly
    type: looker_bar
    fields: [dim_store.location, agg_store_actual_monthly.actual_sales_cp]
    sorts: [dim_store.location]
    limit: 500
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: agg_store_actual_monthly.actual_sales_cp,
            id: agg_store_actual_monthly.actual_sales_cp, name: CP}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: custom, tickDensityCustom: 5,
        type: linear}]
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
    series_types: {}
    point_style: none
    series_colors:
      agg_store_actual_monthly.actual_sales_cp: "#2085b2"
    series_labels:
      agg_store_actual_monthly.actual_sales_var: Variance
      agg_store_actual_monthly.actual_sales_cp: CP
      agg_store_actual_monthly.actual_sales_lp: LP
      agg_store_actual_monthly.budget_sales_cp: Budget
      dim_store.location: Level
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    label_rotation: 0
    show_null_labels: false
    x_axis_label_rotation_bar: 0
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1ebd8493-ebcc-4e57-a4ff-ab3e6111da24, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: []}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 9
    col: 8
    width: 9
    height: 6
  - title: Sales - CP
    name: Sales - CP
    model: poc
    explore: agg_store_actual_monthly
    type: single_value
    fields: [agg_store_actual_monthly.actual_sales_cp]
    limit: 500
    series_types: {}
    listen: {}
    row: 0
    col: 6
    width: 6
    height: 3
  - title: Sales - LP
    name: Sales - LP
    model: poc
    explore: agg_store_actual_monthly
    type: single_value
    fields: [agg_store_actual_monthly.actual_sales_lp]
    limit: 500
    series_types: {}
    listen: {}
    row: 0
    col: 12
    width: 6
    height: 3
  - title: Sales - Var
    name: Sales - Var
    model: poc
    explore: agg_store_actual_monthly
    type: single_value
    fields: [agg_store_actual_monthly.actual_sales_var]
    limit: 500
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 6
    height: 3
  - title: Sales - Budget
    name: Sales - Budget
    model: poc
    explore: agg_store_actual_monthly
    type: single_value
    fields: [agg_store_actual_monthly.budget_sales_cp]
    limit: 500
    series_types: {}
    listen: {}
    row: 0
    col: 18
    width: 6
    height: 3
