import unittest
from TournamentSystem import TournamentScoringSystem


class TestTournamentScoringSystem(unittest.TestCase):
    def setUp(self):
        self.system = TournamentScoringSystem()

    def test_initialization(self):
        self.assertEqual(self.system.teams, {})
        self.assertEqual(self.system.scores, {})
        self.assertEqual(self.system.players, {})


if __name__ == "__main__":
    unittest.main()
