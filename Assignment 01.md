---
title: Assignment 1
subtitle: Computer performance, reliability, and scalability calculation
author: Justin Wisniewski
---

## 1.2 

#### a. Data Sizes

| Data Item                                  | Size per Item | 
|--------------------------------------------|--------------:|
| 128 character message.                     | 128 Bytes     |
| 1024x768 PNG image                         | 472 KB        |
| 1024x768 RAW image                         | 2.36 MB       | 
| HD (1080p) HEVC Video (15 minutes)         | 430 MB        |
| HD (1080p) Uncompressed Video (15 minutes) | 126 GB        |
| 4K UHD HEVC Video (15 minutes)             | 2.62 GB       |
| 4k UHD Uncompressed Video (15 minutes)     | 45 GB         |
| Human Genome (Uncompressed)                | 3 GB          |

A few scanning tips. Understanding File Types, Bit Depth, Image Data Size. With calculators for image size and to Convert Bytes to KB, MB, GB, TB. (n.d.). https://www.scantips.com/basics1d.html 

#### b. Scaling

|                                           | Size     | # HD | 
|-------------------------------------------|---------:|-----:|
| Daily Twitter Tweets (Uncompressed)       | 59.39GB  |  1   |
| Daily Twitter Tweets (Snappy Compressed)  | 35.2 GB  |  1   |
| Daily Instagram Photos                    | 98.84TB  |  10  |
| Daily YouTube Videos                      | 2223 TB  |  223 |
| Yearly Twitter Tweets (Uncompressed)      | 21.16TB  |  3   |
| Yearly Twitter Tweets (Snappy Compressed) | 12.53TB  |  2   |
| Yearly Instagram Photos                   | 35.25PB  | 3609 |
| Yearly YouTube Videos                     | 792.7PB  | 81130|

#### c. Reliability
|                                    | # HD | # Failures |
|------------------------------------|-----:|-----------:|
| Twitter Tweets (Uncompressed)      | 3    |      0     |
| Twitter Tweets (Snappy Compressed) | 2    |      0     |
| Instagram Photos                   | 3609 |     175    |
| YouTube Videos                     | 81130|    3934    |

Hard Drive Data and Stats. Backblaze Hard Drive Stats. (n.d.). https://www.backblaze.com/b2/hard-drive-test-data.html 

#### d. Latency

|                           | One Way Latency      |
|---------------------------|---------------------:|
| Los Angeles to Amsterdam  | 150-200 ms           |
| Low Earth Orbit Satellite | 20-50 ms             |
| Geostationary Satellite   | 240-280 ms           |
| Earth to the Moon         | 1.282 s              |
| Earth to Mars             | 3 minutes            | 

Ping time between Amsterdam and Los Angeles. WonderNetwork. (n.d.). https://wondernetwork.com/pings/Amsterdam/Los%20Angeles 
