<center>
    <h1>南开大学编译原理</h1>
</center>

### 课程实验总目标

实现一个SysY语言的编译器，实现SysY语言到RISC-V指令集的转化

### 课程基础镜像（集合了课程所需的所有的环境）
#### 镜像地址
[![Docker Hub](https://img.shields.io/badge/DockerHub-lorn1%2Fpc-blue)](https://hub.docker.com/r/lorn1/pc)
#### 使用方法
```bash
docker pull lorn1/pc:wsl
docker run -it lorn1/pc:wsl /bin/bash
```

### lab01-编译器预备工作

1.以GCC为研究对象，更加深入地了解语言处理系统的完整工作流程：
    a.完整的编译流程都有什么？
    b.预处理器做了什么？
    c.编译器做了什么？
    d.汇编器做了什么？
    e.链接器做了什么？
2.熟悉LLVM IR中间语言和汇编语言：设计SysY示例程序涵盖编译器要支持的语言特性（各种数值运算，赋值分支条件，循环等语句，函数以及其他进阶特性）
3.编写LLVM IR程序以及RISC-V汇编程序，与SysY源程序等价，且能链接SysY运行库，用LLVM/Clang，汇编器编译成目标程序，验证结果是否正确

### 参考仓库
项目地址：https://github.com/CentaureaHO/SysY_Compiler_2025.git