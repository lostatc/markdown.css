```rust
fn fibonacci(n: u32) -> u32 {
    match n {
        0 => 1,
        1 => 1,
        _ => fibonacci(n - 1) + fibonacci(n - 2),
    }
}
```

| Column A | Column B | Column C |
| --- | --- | --- |
| One | One | One |
| Two | Two | Two |
| Three | Three | Three |
| Four | Four | Four |
