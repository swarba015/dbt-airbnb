{% test expect_column_values_to_be_of_type(model, column_name, column_type) %}
select 1
from information_schema.columns
where table_schema = '{{ model.schema | upper }}'
  and table_name = '{{ model.name | upper }}'
  and column_name = '{{ column_name | upper }}'
  and data_type != '{{ column_type | upper }}'
{% endtest %}