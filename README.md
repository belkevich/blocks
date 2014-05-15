Useful macros for objective-c blocks
===

Tired with `block != nil` check? Too many code lines to run block on dispatch queue? This macros for you!

#### Installation

Add to [Podfile](http://cocoapods.org/) `pod 'macros_blocks'`

#### Call block safely

```objective-c
safe_block(block, arguments);
```

is equal to

```objective-c
if (block)
{
    block(arguments);
}
```

#### Call block on main queue

```objective-c
main_queue_block(block, arguments);
```

is equal to

```objective-c
dispatch_async(dispatch_get_main_queue(), ^
{
    if (block)
    {
        block(arguments);
    }
});
```

#### Call block on custom queue

```objective-c
async_queue_block(queue, block, arguments)
```

is equal to

```objective-c
dispatch_async(queue, ^
{
    if (block)
    {
        block(arguments);
    }
});

```

#### Updates

Follow updates on twitter [@okolodev](https://twitter.com/okolodev)
