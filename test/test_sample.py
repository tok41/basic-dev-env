"""sample test
"""
# import pytest
from src import sample


def test_sample():
    a = 1
    actual = sample.hoge(a)
    expect = 1
    assert actual == expect
