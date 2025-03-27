---
title: dataframe知识图谱
date: 2025/03/20 14:23:46
author: lele
tags:
  - 人工智能
mathjax: true
---
```mermaid
graph LR
    A[DataFrame操作] --> B[创建]
    A --> C[增]
    A --> D[删]
    A --> E[查]
    A --> F[切片]
    A --> G[修改]

    B --> B1["pd.DataFrame()"]
    B --> B2["from_dict()"]
    B --> B3["read_csv()/read_excel()"]

    C --> C1["df['新列'] = ..."]
    C --> C2["df.insert()"]
    C --> C3["df.append()"]

    D --> D1["df.drop(columns=)"]
    D --> D2["df.drop(index=)"]
    D --> D3["del df['列名']"]

    E --> E1["df.loc[]"]
    E --> E2["df.iloc[]"]
    E --> E3["df.query()"]
    E --> E4["布尔索引"]

    F --> F1["df[start:end]"]
    F --> F2["df.loc[:, '列1':'列2']"]
    F --> F3["df.iloc[行范围, 列范围]"]

    G --> G1["df.loc[] = ..."]
    G --> G2["df.replace()"]
    G --> G3["df.apply()"]
```

---
### **操作说明**
#### 1. **创建**
- **`pd.DataFrame()`**: 通过字典、列表等直接创建 DataFrame。
- **`from_dict()`**: 将字典转换为 DataFrame。
- **`read_csv()/read_excel()`**: 从文件读取数据生成 DataFrame。

#### 2. **增**
- **`df['新列'] = ...`**: 直接添加新列。
- **`df.insert()`**: 在指定位置插入列。
- **`df.append()`**: 追加行数据（需用 `pd.concat()` 替代）。

#### 3. **删**
- **`df.drop(columns=)`**: 删除指定列。
- **`df.drop(index=)`**: 删除指定行。
- **`del df['列名']`**: 直接删除列。

#### 4. **查**
- **`df.loc[]`**: 按标签查询行或列。
- **`df.iloc[]`**: 按位置索引查询行或列。
- **`df.query()`**: 通过表达式筛选数据。
- **布尔索引**: 用条件表达式筛选行。

#### 5. **切片**
- **`df[start:end]`**: 按行位置范围切片。
- **`df.loc[:, '列1':'列2']`**: 按列标签范围切片。
- **`df.iloc[行范围, 列范围]`**: 按行列位置切片。

#### 6. **修改**
- **`df.loc[] = ...`**: 按标签修改数据。
- **`df.replace()`**: 替换特定值。
- **`df.apply()`**: 应用函数修改数据。

---