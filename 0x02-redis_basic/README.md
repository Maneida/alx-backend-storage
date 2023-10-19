# 0x02-redis_basic

| Task | File Name | Class/Function Name | Method Names/Description |
| --- | --- | --- | --- |
| **1. Writing strings to Redis** | `exercise.py` | `Cache` | - `__init__`: Initialize Redis client and flush the instance. <br>- `store(data)`: Generate a random key, store data in Redis using the key, and return the key. |
| **2. Reading from Redis and recovering original type** | `exercise.py` | `Cache` | - `get(key, fn=None)`: Retrieve data from Redis and optionally apply conversion using `fn`. <br>- `get_str(key)`: Automatically convert data to string. <br>- `get_int(key)`: Automatically convert data to integer. |
| **3. Incrementing values** | `exercise.py` | `Cache` | - `store(data)`: Store data in Redis. (Decorated with `count_calls`) |
| **4. Storing lists** | `exercise.py` | `Cache` | - `store(data)`: Store data in Redis. (Decorated with `call_history`) |
| **5. Retrieving lists** | `exercise.py` | N/A | `replay(func)`: Display history of calls for a function. |
