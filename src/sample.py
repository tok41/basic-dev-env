"""sample code
"""


from typing import Union


def hoge(x: float) -> Union[int, float]:
    """sample function

    Args:
        x (float): input value

    Returns:
        Union[int, float]: return value -> numeric value
    """
    return x


if __name__ == "__main__":
    a: float = 100.0
    z = hoge(a)
    print(f"{z}")
