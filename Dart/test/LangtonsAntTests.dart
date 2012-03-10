#import('../third_party/unittest_vm.dart');
#import('../src/LangtonsAntLibrary.dart');

#source('CellTest.dart');
#source('BoardTest.dart');
#source('AntTest.dart');
#source('GameTest.dart');

void main() {
  new CellTest().run();
  new BoardTest().run();
  new AntTest().run();
  new GameTest().run();
}
