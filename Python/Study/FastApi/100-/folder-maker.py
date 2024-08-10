import os


class FolderMaker:
    def __init__(self, path) -> None:
        self.path = path

    def make_folder(self, folder_name) -> bool:
        try:
            full_path = os.path.join(self.path, folder_name)
            os.makedirs(full_path)
            return True
        except OSError:
            return False

    def find_index_html(self, folder_name) -> list[str]:
        def find_recursive(path) -> list[str]:
            index_files = []
            for root, _, files in os.walk(path):
                if "index.html" in files:
                    index_files.append(os.path.join(root, "index.html"))
            return index_files

        folder_path = os.path.join(self.path, folder_name)
        return find_recursive(folder_path)

