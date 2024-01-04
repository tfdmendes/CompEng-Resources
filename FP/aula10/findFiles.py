import os

def printDirFiles(d):
    lst = os.listdir(d)
    #print(lst)
    for fname in lst:
        path = os.path.join(d, fname)
        if os.path.isfile(path):
            ftype = "FILE"
        elif os.path.isdir(path):
            ftype = "DIR"
        else:
            ftype = "?"
        print(ftype, path)
    return


def findFiles(path, ext):
    list_files = os.listdir(path)
    #print(list_files)
    list_py_files = []
    
    for fname in list_files:
        current_path = os.path.join(path, fname)
        # print(current_path)
        if os.path.isdir(current_path):
            # procura por ficheiros nos subdirectorios
            list_py_files.extend(findFiles(current_path, ext))
        elif ext in fname and not fname.startswith(".DS_Store"):
            list_py_files.append(fname)
        
    return list_py_files


def main():
    print("Testing printDirFiles('..'):")
    printDirFiles("..")

    print("\nTesting findFiles('.', '.py'):")
    lst = findFiles(".", ".py")
    print(lst)
    #assert isinstance(lst, list)

    print("\nTesting findFiles('..', '.csv'):")
    lst = findFiles("..", ".csv")
    print(lst)

if __name__ == "__main__":
    main()