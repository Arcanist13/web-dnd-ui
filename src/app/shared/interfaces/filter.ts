export interface Filter<T> {
  filterChange(param: T): void;
  filterClear(): void;
}
