{% test expect_column_quantile_values_to_be_between(model, column_name, quantile, min_value, max_value) %}
select 1
from (
    select percentile_cont({{ quantile }}) within group (order by {{ column_name }}) as quantile_value
    from {{ model }}
) t
where quantile_value < {{ min_value }} or quantile_value > {{ max_value }}
{% endtest %}