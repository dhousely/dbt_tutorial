{% docs customer_id %}
The **unique identifier** for a customer within our system. This ID is consistent across all orders and customer-related activities.

**Note:** This ID is sourced from the `RAW.JAFFLE_SHOP.CUSTOMERS` table and is guaranteed to be `NOT NULL`.
{% enddocs %}

{% docs order_status %}
The current status of an order. Possible values include:
- `pending`: Order has been placed but not yet processed.
- `completed`: Order has been processed and fulfilled.
- `returned`: Order has been returned.
{% enddocs %}