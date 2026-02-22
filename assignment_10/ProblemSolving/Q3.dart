/*3. Unique Visitor Counter
You are building a mobile app that tracks unique visitors per day.
- Each visitor is identified by an ID (an integer).
- During the day, the app receives many repeated IDs (because the same user may open the app multiple times).
- You need to count how many unique visitors used the app today.
Write code that, given a list of visitor IDs, returns the number of unique visitors.*/



void main() {
  VisitorCounter counter = VisitorCounter();

  List<int> visitorIds = [101, 203, 101, 405, 203, 999];

  counter.addVisitors(visitorIds);

  print("Unique visitors today: ${counter.getUniqueVisitorCount()}");
}

class VisitorCounter {
  Set<int> _uniqueVisitors = {};

  void addVisitor(int id) {
    _uniqueVisitors.add(id);
  }

  void addVisitors(List<int> ids) {
    _uniqueVisitors.addAll(ids);
  }

  int getUniqueVisitorCount() {
    return _uniqueVisitors.length;
  }
}
