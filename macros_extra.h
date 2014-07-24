//
//  macros_extra.h
//  macros_blocks
//
//  Created by Alexey Belkevich on 7/22/14.
//  Copyright (c) 2014 okolodev. All rights reserved.
//

#ifndef macros_extra_h
#define macros_extra_h

#define range_value(value,min,max) ({ __typeof__(value) __x = value > min ? value : min; \
                                      __x < max ? __x : max; })
#define safe_malloc(size) ({size > 0 ? malloc(size) : NULL; })

#endif
